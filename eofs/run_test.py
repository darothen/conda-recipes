import nose


#: Test modules to run by default.
default_test_modules = [
    'eofs.tests.test_solution',
    'eofs.tests.test_error_handling',
    'eofs.tests.test_tools',
    'eofs.tests.test_multivariate_solution',
    'eofs.tests.test_multivariate_error_handling',
]


def run():
    """Run the :mod:`eofs` test suite."""
    nose.main(defaultTest=default_test_modules)


if __name__ == '__main__':
    run()
