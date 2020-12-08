tasks = [
  { name: "設計", explanation: "意見をヒアリングして、設計に入ります。", deadline_date: "2020-08-30", status: 1 , genre_id:1},
  { name: "実装", explanation: "設計をエンジニアに伝達し、作成に入ります。", deadline_date: "2020-08-30", status:2,genre_id:1 },
  { name: "aaaaa", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:6,genre_id:1  },
  { name: "sssssss", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:2,genre_id:2  },
  { name: "ccccccc", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:5,genre_id:2  },
  { name: "vvvvvvvv", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:5,genre_id:2  },
  { name: "sssssss", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:2,genre_id:2  },
  { name: "eeeeeeeeeee", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:2,genre_id:2  },
  { name: "rrrrrrrrr", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:3,genre_id:3  },
  { name: "ttttttttttt", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:6,genre_id:4  },
  { name: "yyyyyyy", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:3,genre_id:3  },
  { name: "uuuuuu", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:5,genre_id:3  },
  { name: "iiiiiiiiiii", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:3,genre_id:3  },
  { name: "oooooooo", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:3,genre_id:4  },
  { name: "hhhhhhh", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:6,genre_id:3  },
  { name: "ooooooooo", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:3,genre_id:2  },
  { name: "hnnnnnn", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:4,genre_id:3  },
  { name: "tyyyy", explanation: "作成したアプリをチェックします。", deadline_date: "2020-08-30", status:4,genre_id:4  },
]

genres=[
  {name:"sample株式会社"},
  {name:"test合同会社"},
  {name:"tanaka有限会社"},
  {name:"apple会社"}
]

ActiveRecord::Base.transaction do
  genres.each do |genre|
    Genre.create(genre)
  end
  tasks.each do |task|
    Task.create(task)
  end
end
