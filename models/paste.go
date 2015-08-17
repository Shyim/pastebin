package models

type Paste struct {
	Id   int
	Code string `orm:"type(text)"`
	Language string
}