from setuptools import setup, find_packages

# Setting up
setup(
    name="KabuEpidemic",
    version='0.1.0',
    author="Lina M. Ruiz G. and Anderson A. Ruales B.",
    author_email="<lina.ruiz2@udea.edu.co>",
    url="https://github.com/LinaMRuizG/kabu_library",
    description="New methodology to identify waves, peaks, and valleys from epidemic curve",
    long_description ="Kabu is a methodology that uses Gaussian kernel to smooth the epidemic curve and estimate its waves, peaks, and valley. It could be used in any curve.",
    long_description_content_type="text/markdown",
    packages=find_packages(include=['KabuEpidemic']),
    install_requires=['pandas==1.5.3', 'scipy==1.10.1', 'matplotlib==3.7.1','numpy==1.25.2'],
    keywords=['epidemic curve', 'waves', 'peaks', 'valleys', 'gaussian filter'],
    license = 'MIT'
)
