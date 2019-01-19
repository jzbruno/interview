package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSumIt(t *testing.T) {
	assert.Equal(t, 12, SumIt(3, 5))
	assert.Equal(t, 22, SumIt(4, 7))
	assert.Equal(t, 42, SumIt(3, 9))
}
