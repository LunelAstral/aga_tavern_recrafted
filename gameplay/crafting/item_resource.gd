class_name TavernItem extends Resource

@export var item_name: StringName
@export var texture: Texture2D
@export var cost: int
@export var sell_cost: int ## Only for sellable items
@export var quality: int
@export var description: String
@export var processing: Array[Genum.ProcessType]
@export var fame_required: int
@export var fame_given: int ## Only for result items
