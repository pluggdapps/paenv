setup :
	@rm -rf pa-env
	@echo "Setting up virtual environment for python 3.x ..."
	@virtualenv --python=python3.2 pa-env 
	@bash -c "source pa-env/bin/activate ; pip install pluggdapps"
	@bash -c "source pa-env/bin/activate ; pip install tayra"
	@bash -c "source pa-env/bin/activate ; pip install tayrakit"

pushcode: push-googlecode push-github push-bitbucket 

push-googlecode:
	hg push https://prataprc@code.google.com/p/paenv/

push-bitbucket:
	hg push https://prataprc@bitbucket.org/prataprc/paenv

push-github:
	hg bookmark -f -r default master
	hg push git+ssh://git@github.com:prataprc/paenv.git

clean:
	rm -rf cache/ttl
	rm -rf pa-env/
	rm -rf __pycache__/
	rm -rf `find ./ -name parsetyrtab.py`;
	rm -rf `find ./ -name lextyrtab.py`;
	rm -rf `find ./ -name "*.pyc"`;
	rm -rf `find ./ -name "yacctab.py"`;
	rm -rf `find ./ -name "lextab.py"`;
