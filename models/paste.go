package models

type Paste struct {
	Id			int
	Url			string
	Code		string `orm:"type(text)"`
	Language	string
	Timestamp	int
	Expiration	int
}