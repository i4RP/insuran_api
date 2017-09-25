# dot-env
`VERIFY_ADDRESS="0x0000000000000000000000000000000000000000"`

# API
## 送金実行
* サンプル
  * `curl -X PUT -H 'Authorization: Token FOO' http://0.0.0.0:3000/expense_reports\?to\=aaaa\&amount\=11111`
* Header
  * `Authorization: Token <トークン>`
* Path
  * `/expense_reports`
* HTTP Method
  * `PUT/PATCH`
* Params
  * `to`
    * 送金先アドレス
  * `amount`
    * 送金額(wei)
# insuran_api
