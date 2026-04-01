%dw 2.0
output application/json
---
{
  items: payload.items map {
    productId: $.id,
    // ❌ BUG: Array access without bounds check
    stock: $.stockLevels[0].quantity
  }
}