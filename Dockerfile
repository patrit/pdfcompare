FROM patrit/execthat:0.1

RUN apk add --no-cache imagemagick poppler-utils jq
COPY pdfcompare pdfcompare
