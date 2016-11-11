.PHONY: codestyle
codestyle:
	find -L src -name '*.php' -print0 | xargs -0 -n 1 -P 4 bin/phpcs --standard=PSR2 --warning-severity=0

.PHONY: fix-codestyle
fix-codestyle:
	find -L src -name '*.php' -print0 | xargs -0 -n 1 -P 4 bin/phpcbf --colors --standard=PSR2

.PHONY: test
test:
	bin/phpunit

.PHONY: security-check
security-check:
	bin/security-checker security:check
  
