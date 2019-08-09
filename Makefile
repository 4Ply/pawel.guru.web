build:
	hugo

deploy:
	aws s3 cp --recursive public s3://pawel.guru


build_and_deploy: build deploy
