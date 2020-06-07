# pdfcompare
## Usage
```
# start container
sudo docker run -d -p 8080:8080 pdfcompare

# prepare request data
echo '{"pdf1":"'$(cat a.pdf | base64 -w 0)'", "pdf2":"'$(cat b.pdf | base64 -w 0)'"}' > data.json

# call service
curl http://localhost:8080/app/pdfcompare -s -X POST -d @data.json -o res.json

# get amount of pages with difference
cat res.json | jq .status
# get visual feedback
cat res.json | jq -r .pdf | base64 -d > res.pdf
```
