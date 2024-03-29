init:
	git clone https://github.com/saey55/hugo-elate-theme themes/hugo-elate-theme

build:
	hugo

deploy:
	aws s3 cp --recursive public s3://pawel.guru

invalidate_cache:
	aws cloudfront create-invalidation --distribution-id "E20SLYGRWEXRQA" --paths "/index.html"


build_and_deploy: build deploy invalidate_cache
