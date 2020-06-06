FROM patrit/execthat:latest

RUN apk add --no-cache imagemagick poppler-utils jq
COPY pdfcompare pdfcompare
