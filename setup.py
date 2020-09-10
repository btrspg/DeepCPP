from setuptools import setup




setup(
    name='NCResNet-wrapper',
    version='0.1.0',
    packages=['deepcpp'],
    include_package_data=True,
    package_data={'': ['models/*.*']},
    entry_points={
            "console_scripts": [
                "DeepCPP.py = deepcpp.utils_lncRNA:run",
            ]},
    url='',
    license='',
    author='CHEN Yuelong',
    author_email='yuelong.chen.btr@gmail.com',
    description='DeepCPP wrapper'
)
