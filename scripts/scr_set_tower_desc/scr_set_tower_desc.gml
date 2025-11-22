// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_tower_desc() {
	
	if global.option_language == global.option_language_options.EN {
		global.tower_name[17] = "Mayumushi";
		global.tower_name[16] = "Captain Viridian";
		global.tower_name[15] = "Geezer";
		global.tower_name[14] = "DJ Sray";
		global.tower_name[13] = "Cirno";
		global.tower_name[12] = "Spike Factory";
		global.tower_name[11] = "Heart";
		global.tower_name[10] = "Sticky Keys";
		global.tower_name[9] = "Lee Ho-Seong";
		global.tower_name[8] = "Colonel Schwarlitz";
		global.tower_name[7] = "Boshy";
		global.tower_name[6] = "Mike Tyson";
		global.tower_name[5] = "The Guy";
		global.tower_name[4] = "Marcianito";
		global.tower_name[3] = "Thwomp";
		global.tower_name[2] = "Miku";
		global.tower_name[1] = "Spike Turret";
		global.tower_name[0] = "The Kid";
		
		global.tower_desc[17] = "A long range tower that can consume tight clusters of fruit, but attacks slowly\nUpgrades include camo removal and faster attack speed";
		global.tower_desc[16] = "Flips between the borders of the screen while launching volleys of spikes\nUpgrades include camo detection and tracking bullets";
		global.tower_desc[15] = "This Council Member attacks quickly and launches homing bullets\nUpgrades include octorok fire bullets and plastering tracks with spinies"
		global.tower_desc[14] = "Fast-attacking dance queen, ready to accept any challenge\nUpgrades include camo detection and more bullets per attack"
		global.tower_desc[13] = "Can freeze many fruit around her, stopping them briefly\nUpgrades include walls of ice and an additional ranged attack"
		global.tower_desc[12] = "Creates spike piles for nearby paths, forming a strong last line of defense, including against camo fruit\nUpgrades include faster production speed and longer spike lifespan"
		global.tower_desc[11] = "A support tower that increases the range of all other towers within its radius\nUpgrades include granting towers camo detection and faster attack speed"
		global.tower_desc[10] = "A support tower that corrupts fruit with glitches, slowing them down for a short time\nUpgrades include glitches that can hit bosses and the ability to slow all fruit at once"
		global.tower_desc[9] = "Starts out with more range and pierce in exchange for attack speed\nUpgrades include exploding baseballs and camo removal"
		global.tower_desc[8] = "A support tower that regularly buffs nearby towers\nBuffed towers can damage lead fruit and deal extra damage to clays and bosses\nUpgrades include shorter cooldowns and longer buffs"
		global.tower_desc[7] = "Attacks deal two layers of damage and slow clay fruit, but can only damage one fruit at a time\nUpgrades include faster attack speed and stunning boss fruit"
		global.tower_desc[6] = "Powerful boxer that can follow your mouse, attacking fruit anywhere\nUpgrades include stronger punches and scaring fruit away"
		global.tower_desc[5] = "The Guy's power grants incredible firing speed and a very large range\nUpgrades include a grenade attack and more powerful bullets"
		global.tower_desc[4] = "Has global range and fires lasers that can pierce many, many fruit\nUpgrades include faster firing speed and additional lasers"
		global.tower_desc[3] = "Harnesses the power of explosions, blasting fruit to smithereens\nUpgrades include sharp mini-thwomps and knocking back fruit"
		global.tower_desc[2] = "The Greatest Idol can launch 3 vegetable bullets per attack\nUpgrades include faster firing speed and an additional attack that knocks back bosses"
		global.tower_desc[1] = "Launches spikes in 8 directions, but has a small range\nUpgrades include more spikes per volley and faster shooting"
		global.tower_desc[0] = "Has low range and bullet piercing, but works for cheap\nUpgrades include camo detection and higher clay damage"
	}
	else {
		global.tower_name[17] = "まゆむし";
		global.tower_name[16] = "Captain Viridian";
		global.tower_name[15] = "Geezer";
		global.tower_name[14] = "DJ Sray";
		global.tower_name[13] = "チルノ";
		global.tower_name[12] = "針工場";
		global.tower_name[11] = "ハート";
		global.tower_name[10] = "固定キー";
		global.tower_name[9] = "イ・ホソン";
		global.tower_name[8] = "大佐";
		global.tower_name[7] = "Boshy";
		global.tower_name[6] = "マイクタイソン";
		global.tower_name[5] = "The Guy";
		global.tower_name[4] = "Marcianito";
		global.tower_name[3] = "ドッスン";
		global.tower_name[2] = "ミク";
		global.tower_name[1] = "針砲塔";
		global.tower_name[0] = "The Kid";
		
		global.tower_desc[17] = "密集したりんごを一\n気に食べてくれる。\nしかし、攻撃頻度は低い。\nアップグレードで、\n忍者りんごの隠れ身の術\nを解除したり、\n攻撃連射速度が\n上がったりする。";
		global.tower_desc[16] = "画面を飛び回りながら、\nたくさんの針を投げ\nて攻撃する。\nアップグレードで\n忍者りんごを検知で\nきるようになったり、\nりんごを追跡するよう\nになったりする。";
		global.tower_desc[15] = "攻撃頻度が早く、\nホーミングキラーを発射する。\nアップグレードで\nオクタロックの炎を出したり、\nトゲゾーのトゲ甲羅\nを通路に置いたりする。"
		global.tower_desc[14] = "攻撃頻度高めのダ\nンスクイーン。\n矢印を投げて攻撃する。\nアップグレードで\n忍者りんごを検知で\nきるようになったり、\n一度の攻撃の量が増\nえたりする。"
		global.tower_desc[13] = "周囲のりんごを凍らせ\nて一時的に動きを止める。\nアップグレードで\n氷の壁が出るようになったり、\n遠距離攻撃ができる\nようになったりする。"
		global.tower_desc[12] = "近くの通路に針\nで出来た杭を生成し、\n強力な防衛を作ってくれる。\nまた、\n忍者りんごにも通用する。\nアップグレードで\n杭の生産速度が上がったり、\n一度に出す杭のHP\nが増加したりする。"
		global.tower_desc[11] = "近くにいるタワーの\n射程を少し長くする\nサポートタワー。\nアップグレードで\n射程の他にも\n攻撃連射速度が上がったり、\n忍者りんごを検知で\nきるようになったりする。"
		global.tower_desc[10] = "バグを発射して、\n少しの間り\nんごの動きを遅くする。\nアップグレードで、\nボスの動きも遅くしたり、\n画面内のりんごの動\nきを全て遅くする能\n力などが出てくる。"
		global.tower_desc[9] = "攻撃間隔を犠牲に\nして射程と貫通力\nが高い野球ボールを投げる。\nアップグレードで\n爆発する野球ボール\nを出したり、\n忍者りんごの隠れ身\nの術を解除したりす\nるようになる。"
		global.tower_desc[8] = "定期的に周辺のタワーを強化\nしてくれるサポートタワー。\n強化されたタワーは\n鉛りんごに大ダメー\nジを負わせたり、\n粘土りんごやボスに追加ダメ\nージを与えたりす\nるようになる。\nアップグレードで\nクールダウン時間\nが短縮されたり、\n効果の時間延長な\nどをしてくれる。"
		global.tower_desc[7] = "2層りんごの体力を削れたり、\n粘土りんごの速度を遅く\nさせたりする蜘蛛を出す。\n(しかし、一度に攻撃でき\nるりんごは一つだけ。)\nアップグレードで\n攻撃頻度が上がったり、\nボスをスタンさせる\nなどができるようになる。"
		global.tower_desc[6] = "自動で動いてりん\nごを攻撃し続ける\n強いボクサー。\nアップグレードで\n強化パンチやりんごを追い\n払う能力などが出てくる。"
		global.tower_desc[5] = "連射速度がとても速く、\n射程が非常に広い。\nアップグレードで\n手榴弾攻撃や、\n強化弾を出したりする。"
		global.tower_desc[4] = "射程がとても長く、\nりんごを貫通する\nレーザーを発射する。\nアップグレードで\n連射速度が上がったり、\n追加のレーザーが\n出てきたりする。"
		global.tower_desc[3] = "りんごに向かっていき、\n爆発の力を使ってり\nんごを粉々にする。\nアップグレードで\n鋭いミニドッスンを召\n喚したり、\nりんごの吹き飛ばしな\nどができるようになる。"
		global.tower_desc[2] = "1度の攻撃で\n野菜を3つ発射する。\nアップグレードで\n発射速度が上がったり、\nボスをノックバック\nする能力を得たりする。"
		global.tower_desc[1] = "8方向に針を発射するが、\n射程が短い。\nアップグレードで\n一度の射撃数が上がったり、\n発射速度が上がったりする。"
		global.tower_desc[0] = "弾の射程が短く\n貫通もあまりしないが、\n低コストで使える。\nアップグレードで\n隠れているりんご検出や、\n粘土りんごのダメー\nジ増加などをする。"
	}
	
	
	
}