Clone this repository from github or google-code, and create a python
`virtual environment` to run pluggdapps. This repository will provide you with,

- ``make setup``, to setup the virtual environment for pluggdapps.
- ``etc/`` directory that will have configuration settings for pluggdapps and
  its plugins.
- ``db/`` directory to store database files used by pluggdapps and its 
  web-applications

Original repository is maintained in mercurial and uses hg-git plugin to
publish it on github.

**Prerequisits to setup paenv virtual environment**

- Install package python3-setuptools,
  ``sudo apt-get install python3-setuptools``,
  this will give you the command easy_install3.

- Install pip using Python 3's setuptools,
  ``sudo easy_install3 pip``,
  will give you the command pip-3.2 like kev's solution.

- Install virtual environment using pip-3.2
  ``sudo pip-3.2 install virtualenv``.


.. code-block:: bash

   cd paenv
   make setup

This will create a virtual environment and install latest version of
pluggdapps and related packages. A note on the directory structure,

**etc/**

Contains all configuration files. ``etc/master.ini`` is the master 
configuration file. Apart from the master configuration file, each 
web-application instance booted under the pluggdapps environment can have
a configuration file. For instance, ``etc/webadmin.ini`` configures
``WebAdmin`` application loaded as http://localhost/webadmin.

**db/**

Contains database files. Pluggdapps officially depends only on linux,
python-3.x and python standard library. Hence, you can expect that many
applications under pluggdapps will be using ``sqlite3`` for database and they
are configured under this directory.

**cache/**

To be used as cache directory for templates, memoizations, etc ...

**Start native HTTP server**

.. code-block:: bash

    ./pa-env/bin/pa -w -c etc/master.ini serve

To learn more about the ``pa`` command try,

.. code-block:: bash

    ./pa-env/bin/pa -h

To learn more about the ``serve`` sub-command try,

.. code-block:: bash

    ./pa-env/bin/pa serve -h

Full documentation of pluggdapps and ``pa-script`` is available
`here <http://pythonhosted.org/pluggdapps>`_.

**Reference**

- Latest `virtual environment <https://pypi.python.org/pypi/virtualenv/1.9.1>`_
  using python3 and pip.
- A stackoverflow `thread <http://stackoverflow.com/questions/10763440/how-to-install-python3-version-of-package-via-pip>`_
  narrating similar things.

**Known issues**

- Note that at-present python-3.3 may not by distributed for ubuntu, and
  many python packages are releasing their latest versions compatible with 3.3
  because unicode syntax ``u''`` is added back. If you come across any
  problems related to this post us to `pluggdapps` google groups.

