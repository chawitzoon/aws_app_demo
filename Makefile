install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=cli --cov=mlib --cov=utilscli --cov=app test_mlib.py

format:
	black *.py

lint:
	pylint --disable=R,C,W1203,E1101 *.py # mlib cli utilscli
	# lint Dockerfile
	# docker run --rm -i hadolint/hadolint < Dockerfile

# deploy:
	# push to ECR for deploy
	# tbd
	
all: install lint test format # deploy