provider "aws" {
  region     = "us-east-2"
  access_key = "ASIAWO6Y2XSN26HJAF7O"
  secret_key = "fe3+P4H7+3MUfQBDy3IHidaXXeSl3K7ug9JnacGy"
  token      = "IQoJb3JpZ2luX2VjEFYaCXVzLWVhc3QtMSJIMEYCIQDz1848DGwRV2jwXNfD8YPSlrP7+QCZ3kCR00dE2bbBPQIhAOI21VcXbfzIfP6jdCFVL1xQEiBK4/bmAxionohLRdZ4KroDCH4QAxoMNDQ0NDQ2OTgxMjc1IgwHRqlM7uU7oM+0Y4QqlwO/48jxh6+GfMasDRvKIMlGCFZnCXmDipttpajtCsXsWTTWHxgpLZItdFUY9gJPSETDEoi3tgAmH4N7t+vv5ZNm4ktEJfaJgngtmCz8LDejOBrXf4iBGYQJSttRN2/eE8h+5lQHEX7ifSiYpISLN9C/j4WSgsSj2lRaM/KGQr1K2LpMSq0DiquZIIKrRvOlxS+3sDdStJqF4dAsREWggBEzhEbnpRlGvohkCIeYZqb/JhXQ4lcYHown4hvWHtjWlVlfmd8508xltp7eOOrflQW0H2tSWYP1kKnQrbZL/R16e68PUdeFYZ/kcLlcG9MzRrWoaXssWEfX1dIYG5BnzqMee3gFjMcJ0Yo2+X3FJmBqpQDvEf+ujWksLKmR/NfxG1IFLw1APvd/ILdAuyW8pdbXrDEvCRJgDWrwwh5THGzHVOriCfBeJVsX5tgNygJrLRw7eiBgxJxrzDlPjvB3/ysHZPkwT1svDZ4Dhuv6t6WHoJ0tjOMAbnzb4pNiSQoYrMPlm6WIB59XNR4YKCnQ7sBUKbb2/rV0RjDT6qSCBjqlAciWDxFg0HP0qJhQGrqHP1ZEa4rIKi0IsfYYcKDPiPCfbSrcgdLOlNi1sTwKlP/WlSTyxkXSWFTeCnZJQWFSWcosF4+WLX2NIze8sxV9JiHg6KsY8IHjPsHAbK5nZtkR0JZs8FedGhPIQYWgser5aV4xJxgW8ZlSpOKioS7tcYfqQ4U8hbfsdJ2LzIxMktN15WdPNZLxNgQcO7gunlJybY8xeryc2A=="

}

resource "aws_resourcegroups_group" "terra-associate" {
  name = "test-group"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "Stage",
      "Values": ["Test"]
    }
  ]
}
JSON
  }
}

resource "aws_resourcegroups_group" "terra-associate2" {
  name = "test-group2"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "Stage",
      "Values": ["Test"]
    }
  ]
}
JSON
  }
}
