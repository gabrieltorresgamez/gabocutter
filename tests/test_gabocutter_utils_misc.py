"""
Tests for `gabocutter` module.
"""

import pytest
import gabocutter


def test_hello_world():
    assert gabocutter.utils.misc.get_hello_world() == "Hello, World!"
