# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Spree::Core::Engine.load_seed if defined?(Spree::Core)
# Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# ==========Item==========================

ItemFeature.delete_all
ItemItemCategory.delete_all
ItemCategory.delete_all
Item.delete_all
User.delete_all


item_RW_1879 = Item.create(mpn: 'RW-1879',
    detailed_item_info: 'ポリエステル100%(ジョーゼット)',
    item_info: '心をくすぐる、ふんわりフリル袖☆
ドレープ感のあるフリルスリーブが最高にキュートなブラウスは、フロントが短いイレギュラーヘム仕様だからバランスよく着こなせる♪ 表面感のある涼しげなジョーゼットで、爽やかに夏を満喫して。パステルからベーシックカラーまで何枚でも欲しくなる5色展開。',
    qty: 1,
    item_size: 9,
    color: 'ライトベージュ',
    list_price: 1998,
    item_name: 'シフォンフリルブラウス',
    item_image: '54001RW-1879_1.jpg')

Item.create(mpn: 'RW-1866',
    detailed_item_info: 'ポリエステル100%(シフォン)',
    item_info: 'ふわりと揺れるたびに清涼感!クールな夏ブラウス。
後ろが長めのイレギュラーヘムが爽やかに揺れるノースリーブブラウス。やや肉厚なシフォン素材はほんのり透けて、落ち感もきれい。ヒップの隠れるチュニック丈はスカートにもパンツにも合う!',
    qty: 1,
    item_size: 7,
    color: 'レッド系',
    list_price: 1998,
    item_name: 'ノースリーブフレアブラウス',
    item_image: '53001RW-1866_4.jpg')

Item.create(mpn: 'RW-1863',
    detailed_item_info: 'ポリエステル100%(カットソー)',
    item_info: '夏の羽織りモノはフーデッドカーディガンで決まり!
透け感ある軽やかな編み地のニットソー素材。フロントはノーボタンで、さらりと羽織るとフロントに程よい量感が出る仕立て。ロールアップ仕様の袖でカジュアル感もアップして。',
    qty: 1,
    item_size: 5,
    color: 'グレー',
    list_price: 1998,
    item_name: 'ニットソーカーディガン',
    item_image: '53001RW-1863_1.jpg')

# ---------------------
Item.create(mpn: 'RW-1371',
    detailed_item_info: 'ブラウス/ポリエステル100%(レース)、タンクトップ/レーヨン93%・ポリウレタン7%(カットソー)',
    item_info: '裾ひらタンクトップ付きで、旬な大花レースをベストバランスで楽しめる!ブラウスはふんわり後ろタック、袖や裾はレースの形に沿ったこだわりのカッティング。',
    qty: 1,
    item_size: 9,
    color: 'オフホワイト',
    list_price: 6469,
    item_name: 'レースブラウス&タンクトップ',
    item_image: 'RW-1371.jpg')

Item.create(mpn: 'RW-1939',
    detailed_item_info: 'ポリエステル65%・綿35%(織物)',
    item_info: '爽やかキュートなヘルシー肌見せにドキッ☆
ボリュームあるフレアデザインや、今どきボトムと相性◎なショート丈が好バランス☆ストライプ調の凹凸ある軽やかな素材で夏らしさ満点!ウエストシャーリングでブラウジングもでき、肩ひもはアジャスターで調節も可能。',
    qty: 1,
    item_size: 9,
    color: 'オフホワイト',
    list_price: 2149,
    item_name: 'キャミフレアブラウス',
    item_image: 'RW-1939.jpg')

Item.create(mpn: 'RW-1760',
    detailed_item_info: 'ポリエステル100%(ジョーゼット)',
    item_info: 'サイドのドレープをブラウスの袖としたり、前に垂らして華やかに見せたり、スカーフ状に結んだりと、さまざまな表情が楽しめる3WAYブラウス。毎日の着こなしに活躍しそう。',
    qty: 1,
    item_size: 9,
    color: 'グリーン',
    list_price: 4957,
    item_name: '3WAYブラウス',
    item_image: 'RW-1760.jpg')

Item.create(mpn: 'RW-1666',
    detailed_item_info: 'セットでも単品でも着回せて大活躍',
    item_info: 'レーストップ&マキシワンピース',
    qty: 1,
    item_size: 9,
    color: 'スモークピンク',
    list_price: 6469,
    item_name: 'レーストップ&マキシワンピース',
    item_image: 'RW-1666.jpg')



# ==========Item==========================

# ==========ItemFeature===================
# ItemFeature.create(feature_id: 1,
# 	feature_name: '涼しげ',
# 	mpn: 'RW-1879')

# ItemFeature.create(feature_id: 2,
#     feature_name: 'ふんわり',
# 	mpn: 'RW-1879')
# ItemFeature.create(feature_id: 3,
#     feature_name: '夏',
#     mpn: 'RW-1879')
# ==========ItemFeature===================

# ==========ItemCategory==================
ItemCategory.create(category_id: 2,
	category_name: 'ブラウス・シャツ',
	high_level_category_id: 2)

ItemCategory.create(category_id: 12,
    category_name: 'レディースファッション',
    high_level_category_id: 1)
ItemCategory.create(category_id: 22,
    category_name: 'ワンピース',
    high_level_category_id: 1)
ItemCategory.create(category_id: 32,
    category_name: '下着・ランジェリー',
    high_level_category_id: 1)
ItemCategory.create(category_id: 42,
    category_name: 'シューズ',
    high_level_category_id: 1)
ItemCategory.create(category_id: 52,
    category_name: 'バッグ・<br/>ファッション小物',
    high_level_category_id: 1)
ItemCategory.create(category_id: 62,
    category_name: 'ビューティ<br/>&amp;ライフ',
    high_level_category_id: 1)
ItemCategory.create(category_id: 72,
    category_name: 'ネット限定',
    high_level_category_id: 1)
ItemCategory.create(category_id: 82,
    category_name: '大きいサイズ',
    high_level_category_id: 1)
ItemCategory.create(category_id: 92,
    category_name: 'アウトレット<br/>セール',
    high_level_category_id: 1)

ItemCategory.create(category_id: 16,
    category_name: 'カーディガン',
    high_level_category_id: 2)

ItemCategory.create(category_id: 330,
    category_name: '半袖',
    high_level_category_id: 3)

ItemCategory.create(category_id: 338,
    category_name: '長袖',
    high_level_category_id: 3)

# ----------------------

ItemCategory.create(category_id: 340,
    category_name: '半袖・ノースリーブ',
    high_level_category_id: 3)
ItemCategory.create(category_id: 341,
    category_name: 'アンサンブル・セット',
    high_level_category_id: 2)



# ==========ItemCategory==================

# ==========ItemItemCategory==============
ItemItemCategory.create(item_id: 'RW-1879',
    item_category_id: 2)
ItemItemCategory.create(item_id: 'RW-1879',
    item_category_id: 12)
ItemItemCategory.create(item_id: 'RW-1879',
    item_category_id: 330)
# ==========ItemItemCategory==============

ItemItemCategory.create(item_id: 'RW-1371',
    item_category_id: 12)
ItemItemCategory.create(item_id: 'RW-1371',
    item_category_id: 2)
ItemItemCategory.create(item_id: 'RW-1371',
    item_category_id: 340)

ItemItemCategory.create(item_id: 'RW-1939',
    item_category_id: 12)
ItemItemCategory.create(item_id: 'RW-1939',
    item_category_id: 2)
ItemItemCategory.create(item_id: 'RW-1939',
    item_category_id: 340)

ItemItemCategory.create(item_id: 'RW-1760',
    item_category_id: 12)
ItemItemCategory.create(item_id: 'RW-1760',
    item_category_id: 2)
ItemItemCategory.create(item_id: 'RW-1760',
    item_category_id: 340)


ItemItemCategory.create(item_id: 'RW-1666',
    item_category_id: 12)
ItemItemCategory.create(item_id: 'RW-1666',
    item_category_id: 341)

# =======================================

def morphy_analise(iteminfo)
    
    nm = Natto::MeCab.new('-u "./db/ta_custom.dic"')
    words = []
    nm.parse(iteminfo) do |word|
        word_surface = word.surface
        words << word_surface
    end
    return words
end

# words = morphy_analise(item_RW_1879.item_info)

ignore_chars = ["EOS", "。","!","☆" ,"◎" ,"、","♪",""]
items = Item.all

items.each do |item|
    words = morphy_analise(item.item_info)
    words.each do |word|
        next if ignore_chars.include?(word.squish)
        ItemFeature.create(feature_name: word,
        mpn: item.mpn)
    end
end


Neo4j::Session.query("match (n) optional match (n)-[r]-() delete n,r")