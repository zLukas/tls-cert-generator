package aws

import (
	"github.com/aws/aws-sdk-go/aws/session"
)

type CertItem struct {
	PrivateKey string
	Cert       string
}

type TableRecord struct {
	CaCert       CertItem
	CeCert       CertItem
	issuer       string
	creationDate string
}

type dBClient interface {
	Must(sess *session.Session, err error) *session.Session
	NewSessionWithOptions(opts session.Options) (*session.Session, error)
}