train:
	rasa train -d data

run:
	SANIC_WORKERS=5 ACTION_SERVER_SANIC_WORKERS=5 rasa run --enable-api --cors "*" --debug

actions:
	rasa run actions --auto-reload

tensorboard:
	tensorboard --logdir ./tensorboard

clean:
	rm -rf models/
	rm -Rf .rasa

interactive:
	rasa interactive -d data

prepare:
	python -m spacy download zh_core_web_sm