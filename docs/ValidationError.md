# Umschlag::ValidationError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **Integer** |  | 
**message** | **String** |  | 
**errors** | [**Array&lt;ValidationErrorErrors&gt;**](ValidationErrorErrors.md) |  | [optional] 

## Code Sample

```ruby
require 'Umschlag'

instance = Umschlag::ValidationError.new(status: null,
                                 message: null,
                                 errors: null)
```


