.PHONY: all clean default install lock update check pc test docs run

default: check

install:
	uv sync
lock:
	uv lock
update:
	uv sync --upgrade
	prek auto-update

check: pc
pc:
	prek run -a

bumped:
	git cliff --bumped-version

# make release TAG=$(git cliff --bumped-version)-alpha.0
release: check
	git cliff -o CHANGELOG.md --tag $(TAG)
	prek run --files CHANGELOG.md || prek run --files CHANGELOG.md
	git add CHANGELOG.md
	git commit -m "chore(release): prepare for $(TAG)"
	git push
	git tag -a $(TAG) -m "chore(release): $(TAG)"
	git push origin $(TAG)
