HANDS = ["グー", "チョキ", "パー"]
DIRECTIONS = ["上", "右", "左", "下"]

result = "あいこ"
while result == "あいこ"
    puts "じゃんけん..."
    puts "0(グー)、1(チョキ)、2(パー)、3(戦わない)"
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
    puts "ポン！"
    my_hand = HANDS[my_choice]
    computer_choice = rand(3)  # コンピュータの手をランダムに選択
    computer_hand = HANDS[computer_choice]
    puts "------------------------------------",
    "あなた: #{my_hand}を出しました",
    "相手: #{computer_hand}を出しました"
    if my_hand == "グー" && computer_hand == "チョキ"
        result = "勝ち"
    elsif my_hand == "チョキ" && computer_hand == "パー"
        result = "勝ち"
    elsif my_hand == "パー" && computer_hand == "グー"
        result = "勝ち"
    elsif my_hand == "グー" && computer_hand == "パー"
        result = "負け"
    elsif my_hand == "チョキ" && computer_hand == "グー"
        result = "負け"
    elsif my_hand == "パー" && computer_hand == "チョキ"
        result = "負け"
    else
        result = "あいこ"
    end
    puts result
end
puts "------------------------------------"
if result == "勝ち"
    puts "あなた：あっち向いて・・・",
    "(指を指す方向を選んでください)",
    "0(上)、1(右)、2(左)、3(下)"
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
    puts "ホイ!",
    "------------------------------------",
    "あなた: #{my_direction}",
    "相手: #{computer_direction}"
    if my_direction == computer_direction
        puts "あなたの勝ちです！"
    else
        puts "引き分け！"
    end
elsif result == "負け"
    puts "相手：あっち向いて・・・",
    "(顔を向ける方向を選んでください)",
    "0(上)、1(右)、2(左)、3(下)"
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
    puts "ホイ！",
    "------------------------------------",
    "あなた: #{my_direction}",
    "相手: #{computer_direction}"
    if my_direction == computer_direction
        puts "あなたの負けです・・・"
    else
        puts "引き分け！"
    end
end