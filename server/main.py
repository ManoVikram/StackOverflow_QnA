import requests
import json
from bs4 import BeautifulSoup

response = requests.get("https://stackoverflow.com/questions")
soup = BeautifulSoup(response.text, "html.parser")

questions = soup.select(".question-summary")

questionData = {
    "questions": [],
}

for question in questions:
    ques = question.select_one(".question-hyperlink").getText()
    voteCount = question.select_one(".vote-count-post").getText()
    views = question.select_one(".views").attrs["title"]
    tags = [data.getText() for data in question.select(".post-tag")]
    questionData["questions"].append(
        {
            "question": ques,
            "views": views,
            "voteCount": voteCount,
            "tags": tags,
        }
    )

jsonData = json.dumps(questionData, sort_keys=True, indent=4)
print(jsonData)

with open("stackoverflowdata.json", "w") as file:
    file.write(jsonData)
