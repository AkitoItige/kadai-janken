HANDS = ["グー", "チョキ", "パー"]
DIRECTIONS = ["上", "右", "左", "下"]

result = "あいこ"
while result == "あいこ"
    puts "じゃんけん..."
    puts "グー(0)、チョキ(1)、パー(2)、戦わない(3)"
    my_choice = gets.chomp!
    if my_choice.match?(/^\d+$/) == false
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    my_choice = my_choice.to_i
    until (0..3).include?(my_choice)
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    if my_choice == 3
        puts "「戦わない」が選択されました。",
        "ゲームを終了します。"
        return
    end
    my_hand = HANDS[my_choice]
    computer_choice = rand(3)  # コンピュータの手をランダムに選択
    computer_hand = HANDS[computer_choice]
    puts "------------------------------------",
    "あなたの手: #{my_hand}",
    "コンピュータの手: #{computer_hand}"
    if my_hand == "グー" && computer_hand == "チョキ"
        result = "勝ち"
        puts result
    elsif my_hand == "チョキ" && computer_hand == "パー"
        result = "勝ち"
        puts result
    elsif my_hand == "パー" && computer_hand == "グー"
        result = "勝ち"
        puts result
    elsif my_hand == "グー" && computer_hand == "パー"
        result = "負け"
        puts result
    elsif my_hand == "チョキ" && computer_hand == "グー"
        result = "負け"
        puts result
    elsif my_hand == "パー" && computer_hand == "チョキ"
        result = "負け"
        puts result
    else
        result = "あいこ"
        puts result
    end
end
puts "------------------------------------"
if result == "勝ち"
    puts "あなた：あっち向いて・・・",
    "(指を指す方向を選んでください)",
    "上(0)、右(1)、左(2)、下(3)"
    my_choice = gets.chomp!
    if my_choice.match?(/^\d+$/) == false
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    my_choice = my_choice.to_i
    until (0..3).include?(my_choice)
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    my_direction = DIRECTIONS[my_choice]
    computer_choice = rand(4)
    computer_direction = DIRECTIONS[computer_choice]
    puts "ほい！",
    "------------------------------------",
    "あなたの向き: #{my_direction}",
    "コンピューターの向き: #{computer_direction}"
    if my_direction == computer_direction
        puts "あなたの勝ちです！"
    else
        puts "引き分け！"
    end
elsif result == "負け"
    puts "コンピュータ：あっち向いて・・・",
    "(顔の向きを選んでください)",
    "上(0)、右(1)、左(2)、下(3)"
    my_choice = gets.chomp!
    if my_choice.match?(/^\d+$/) == false
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    my_choice = my_choice.to_i
    until (0..3).include?(my_choice)
        puts "無効な入力値です。",
        "ゲームを終了します。"
        return
    end
    my_direction = DIRECTIONS[my_choice]
    computer_choice = rand(4)
    computer_direction = DIRECTIONS[computer_choice]
    puts "ほい！",
    "------------------------------------",
    "あなたの向き: #{my_direction}",
    "コンピューターの向き: #{computer_direction}"
    if my_direction == computer_direction
        puts "あなたの負けです・・・"
    else
        puts "引き分け！"
    end
end