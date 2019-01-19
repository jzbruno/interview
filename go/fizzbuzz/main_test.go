package main

import (
	"strconv"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestFizzBuzz(t *testing.T) {
	for i := 0; i < 100; i++ {
		result := FizzBuzz(i)

		if i%3 == 0 && i%5 == 0 {
			assert.Equal(t, "FizzBuzz", result)
		} else if i%3 == 0 {
			assert.Equal(t, "Fizz", result)
		} else if i%5 == 0 {
			assert.Equal(t, "Buzz", result)
		} else {
			assert.Equal(t, strconv.Itoa(i), result)
		}
	}
}
