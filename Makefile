install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_mlib.py
	# python -m pytest -vv --cov=cli --cov=mlib --cov=utilscli --cov=app test_mlib.py

format:
	black *.py

lint:
	pylint --disable=R,C,W1203,E1101 mlib cli utilscli
	# lint Dockerfile
	# docker run --rm -i hadolint/hadolint < Dockerfile

deploy:
	aws ecr get-login-password --region $(AWS_REGION) | docker login --username AWS --password-stdin $(ECR_REPOSITORY_URI)
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME):$(IMAGE_TAG) $(ECR_REPOSITORY_URI):$(IMAGE_TAG)
	docker push $(ECR_REPOSITORY_URI):$(IMAGE_TAG)

all: install lint test format deploy