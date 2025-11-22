image_xscale = 2;
image_yscale = 2;
image_blend = global.image_blend_for_UI;

//initialize array with empty strings
for (var i = 1; i <= global.max_wave + 1; i++) {
	info_array[i] = "";	
}

if global.option_language == global.option_language_options.EN {

	info_array[100] = "The final final boss...\nGood luck!"
	info_array[99] = "Almost there! But first have some fortified Yellow Devils :)"
	info_array[98] = "Tons of fortified Devils this round."
	info_array[95] = "Many, many camo fruit and Yellow Devils this round."
	info_array[90] = "The Yellow Devil is a very fast boss fruit, but also has camo, lead, and black properties."
	info_array[80] = "The final boss of very hard mode, the Green Devil! Very slow but very tough, it contains 4 Red Devils."
	info_array[78] = "Surges of camo clays this wave."
	info_array[76] = "Incoming: a ton of regenerative clays smooshed together. Get ready!"
	info_array[62] = "Fortified Blue Devils up next."
	info_array[60] = "The final boss of hard mode, the Red Devil! It has a ton of health and contains 4 Blue Devils."
	info_array[59] = "Camo lead fruit and regenerative clays..."
	info_array[45] = "Expect fortified lead and clay fruit soon. They are larger and have much more health."
	info_array[40] = "The first boss fruit, the Blue Devil! At least that's what I'm calling it."
	info_array[38] = "Clay fruit take several hits to destroy and contain 2 rainbow fruit."
	info_array[35] = "Rainbow fruit are quick and contain 2 zebra fruit."
	info_array[28] = "Lead fruit must be destroyed by explosions or powerful shots."
	info_array[26] = "Zebra fruit have both white and black properties..."
	info_array[24] = "Camo fruit are transparent and hard to detect."
	info_array[22] = "White fruit are immune to freezing."
	info_array[20] = "Black fruit are immune to explosions and contain 2 pink fruit."
	info_array[3] = "You get $1 for each layer of fruit you destroy, and some bonus cash at the end of each round."
}
else if global.option_language == global.option_language_options.JP {
	info_array[100] = "本当に本当に最後のボス...\n幸運を祈る！"
	info_array[99] = "もう少し！\n強化イエローデビルを倒していこう。:)"
	info_array[98] = "次のウェーブは\n全ての強化デビルが大量出現する。"
	info_array[95] = "次のウェーブは\n忍者りんご\nとイエローデビルが大量出現する。"
	info_array[90] = "めっちゃ速いボスのイエローデビル。\nまた、忍者、鉛、\n黒りんごの特製も持っている。"
	info_array[80] = "ベリーハードモード最終ボス、グリーンデビル！\n動きは遅いが、倒すと4体のレッドデビルが出てくる。"
	info_array[78] = "次は忍者と粘土りんごのウェーブだ。"
	info_array[76] = "大量の再生粘土りんごが接近中 :("
	info_array[62] = "次は強化ブルーデビル。"
	info_array[60] = "ハードモード最終ボス、レッドデビル！\n倒すと4体のブルーデビルが中から出てくる。"
	info_array[59] = "強化忍者りんごと再生りんご..."
	info_array[45] = "鉛りんごと粘土りんごが強化されて出てくる\n！サイズが大きく、\n体力も大幅増加している。"
	info_array[40] = "最初のボスりんご、ブルーデビル！\nこういうのは、僕の適当な呼び方w"
	info_array[38] = "粘土りんごは数回攻撃すると倒せて、\n倒すと虹りんごが中から二つ出てくる。"
	info_array[35] = "虹りんごは動きが素早く、\n倒すとシマウマりんご\nが中から二つ出てくる。"
	info_array[28] = "鉛りんごは、\n爆発か強力な\n一撃でしか倒すことができない。"
	info_array[26] = "シマウマりんごは白りんごと黒りんご\n両方の特製を持っています。"
	info_array[24] = "忍者りんごは隠れ身の術を使っていて、\n検知することが難しい。"
	info_array[22] = "白りんごは凍結の影響を受けません。"
	info_array[20] = "黒りんごは爆発の影響を受けません。\nまた、倒すとピンクりんごが中から2つ出てくる。"
	info_array[3] = "果物の層を破壊するごとに$1ゲットでき、\n各ウェーブ終了後\nにボーナスコインが加算されます。"
}

visible = false;

timer_until_invisible = 0;