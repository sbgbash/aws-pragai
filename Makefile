setup:
	python3 -m venv ~/.pragai-aws
install:
	pip install -r requirements.txt
test:
	PYTHONPATH=. && pytest -vv --cov=paws --cov=pcli tests/*.py
	PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb					     

lint:
	pylint --disable=R,C paws

all: install lint
