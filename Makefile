.PHONY: alpha bumped check install lock pc release update

default: check

check: pc
pc:
	prek run -a

update: up up-ci
up:
	uv sync --upgrade
up-ci:
	prek update
	pinact run --update

bumped:
	git cliff --bumped-version

# make alpha TAG=$(git cliff --bumped-version)-alpha.0
alpha: check
	git tag -a $(TAG) -m "chore(release): $(TAG)"
	git push origin $(TAG)

# make release TAG=$(git cliff --bumped-version)
release: check
	git cliff -o CHANGELOG.md --tag $(TAG)
	prek run --files CHANGELOG.md || prek run --files CHANGELOG.md
	git add CHANGELOG.md
	git commit -m "chore(release): prepare for $(TAG)"
	git push
	git tag -a $(TAG) -m "chore(release): $(TAG)"
	git push origin $(TAG)
