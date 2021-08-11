# docker-mecab

Docker container for [MeCab](https://cakephp.org/): awesome morphological analyzer.

In this image, the default dictionary is switched to [mecab-ipadic-NEologd](https://github.com/neologd/mecab-ipadic-neologd): includes many neologisms (new word), which are extracted from many language resources on the Web.

## Usage example

```console
$ docker run --rm -it sukun1899/mecab:latest mecab
吾輩は猫である。名前はまだない。
吾輩は猫である  名詞,固有名詞,一般,*,*,*,吾輩は猫である,ワガハイハネコデアル,ワガハイワネコデアル
。      記号,句点,*,*,*,*,。,。,。
名前    名詞,一般,*,*,*,*,名前,ナマエ,ナマエ
は      助詞,係助詞,*,*,*,*,は,ハ,ワ
まだ    副詞,助詞類接続,*,*,*,*,まだ,マダ,マダ
ない    形容詞,自立,*,*,形容詞・アウオ段,基本形,ない,ナイ,ナイ
。      記号,句点,*,*,*,*,。,。,。
```

```console
$ echo "国境の長いトンネルを抜けると雪国であった。" | docker run --rm -i sukun1899/mecab:latest mecab
国境    名詞,一般,*,*,*,*,国境,コッキョウ,コッキョー
の      助詞,格助詞,一般,*,*,*,の,ノ,ノ
長い    形容詞,自立,*,*,形容詞・アウオ段,基本形,長い,ナガイ,ナガイ
トンネル        名詞,一般,*,*,*,*,トンネル,トンネル,トンネル
を      助詞,格助詞,一般,*,*,*,を,ヲ,ヲ
抜ける  動詞,自立,*,*,一段,基本形,抜ける,ヌケル,ヌケル
と      助詞,接続助詞,*,*,*,*,と,ト,ト
雪国    名詞,一般,*,*,*,*,雪国,ユキグニ,ユキグニ
で      助動詞,*,*,*,特殊・ダ,連用形,だ,デ,デ
あっ    助動詞,*,*,*,五段・ラ行アル,連用タ接続,ある,アッ,アッ
た      助動詞,*,*,*,特殊・タ,基本形,た,タ,タ
。      記号,句点,*,*,*,*,。,。,。
```
