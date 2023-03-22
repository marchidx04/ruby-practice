File.rename("secondNovel.txt", "novel.txt") if File.exist?("secondNovel.txt")

File.delete("somethingBetter.txt") if File.exist?("somthingBetter.txt")