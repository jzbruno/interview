package gameoflife_test

import (
	"testing"

	"github.com/jzbruno/interview/go/gameoflife"
	"github.com/stretchr/testify/assert"
)

var blinker = [][][]int{
	{
		{0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0},
		{0, 1, 1, 1, 0},
		{0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0},
	},
	{
		{0, 0, 0, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 0, 0, 0},
	},
	{
		{0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0},
		{0, 1, 1, 1, 0},
		{0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0},
	},
}

var toad = [][][]int{
	{
		{0, 0, 0, 0, 0, 0},
		{0, 0, 0, 1, 0, 0},
		{0, 1, 0, 0, 1, 0},
		{0, 1, 0, 0, 1, 0},
		{0, 0, 1, 0, 0, 0},
		{0, 0, 0, 0, 0, 0},
	},
	{
		{0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 0},
		{0, 0, 1, 1, 1, 0},
		{0, 1, 1, 1, 0, 0},
		{0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 0},
	},
	{
		{0, 0, 0, 0, 0, 0},
		{0, 0, 0, 1, 0, 0},
		{0, 1, 0, 0, 1, 0},
		{0, 1, 0, 0, 1, 0},
		{0, 0, 1, 0, 0, 0},
		{0, 0, 0, 0, 0, 0},
	},
}

var beacon = [][][]int{
	{
		{1, 1, 0, 0},
		{1, 1, 0, 0},
		{0, 0, 1, 1},
		{0, 0, 1, 1},
	},
	{
		{1, 1, 0, 0},
		{1, 0, 0, 0},
		{0, 0, 0, 1},
		{0, 0, 1, 1},
	},
	{
		{1, 1, 0, 0},
		{1, 1, 0, 0},
		{0, 0, 1, 1},
		{0, 0, 1, 1},
	},
}

func TestGameOfLifeBlinker(t *testing.T) {
	game := gameoflife.New(blinker[0])

	for _, state := range blinker[1:] {
		game.Step()
		assert.Equal(t, state, game.Board)
	}
}

func TestGameOfLifeToad(t *testing.T) {
	game := gameoflife.New(toad[0])

	for _, state := range toad[1:] {
		game.Step()
		assert.Equal(t, state, game.Board)
	}
}

func TestGameOfLifeBeacon(t *testing.T) {
	game := gameoflife.New(beacon[0])

	for _, state := range beacon[1:] {
		game.Step()
		assert.Equal(t, state, game.Board)
	}
}
