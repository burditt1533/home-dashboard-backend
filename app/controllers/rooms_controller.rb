class RoomsController < ApplicationController
  before_action :set_room, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token  

  # GET /rooms or /rooms.json
  def index
    @rooms = Room.all
    @tasks = Task.all

    Room.delete_all
    Task.delete_all

    rooms = [
      {
          "name": "Kitchen",
          "images": [],
          "tasks": [
              {
                  "name": "Wash Dishes",
                  "description": "No dirty dishes on counter, island, or sink.  Complete when no dirty dishes are visible",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Sink & Faucet",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Take Out Trash",
                  "description": "Put trash in outside trash can and add a new trash bag.",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Out Trashcan",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Island",
                  "description": "Spray with cleaner and wipe the island surface",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Bar Stools",
                  "description": "Spray with cleaner and wipe the island surface",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Counters",
                  "description": "Spray with cleaner and wipe the counter surface",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Stove Top",
                  "description": "Spray with cleaner and wipe the stove top surface and grates.",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside of Oven",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Under and Behind Oven",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Toaster",
                  "description": "Spray with cleaner and wipe the stove top surface and grates.",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Mat",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Outside of Cabinent",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Upper Cabinents",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Lower Cabinents/Drawers",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Top of Cabinent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Walls and Backsplash",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Outside of Refrigerator",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Under/Behind Refrigerator",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside of Refrigerator",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside of Freezer",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Microwave",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Air Fryer",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Organize Pantry",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Pantry Shelves",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Blackstone",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Light Fixtures",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Garbage Disposal/Drain",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Dish Washer & Filter",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Unload Dish Washer",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Sanitize Sponges/Towels",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Foyer",
          "images": [],
          "tasks": [
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": true
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": true
              },
              {
                  "name": "Clean Door Glass",
                  "description": "",
                  "points": 2,
                  "isComplete": true
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 3,
                  "isComplete": true
              },
              {
                  "name": "Clean Mirror",
                  "description": "",
                  "points": 2,
                  "isComplete": true
              },
              {
                  "name": "Clean Light Fixture",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Organize Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Sweep Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Mop Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wipe Closet Shelf",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Breakfast Nook",
          "images": [],
          "tasks": [
              {
                  "name": "Clean Table",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Chairs",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Blinds",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Base Boards",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Light Fixture",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Guest Bathroom",
          "images": [],
          "tasks": [
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Toilet",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Outside & Under Toilet",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Sink",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sanitize Sink Drain",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Mirror",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Take Out Trash",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Base Boards",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Entry Bench",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Entry Bench Cabinet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Living Room",
          "images": [],
          "tasks": [
              {
                  "name": "Fix Pillows and Sofa Cusions",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wash Sofa Cusions & Pillows",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Dust Tv & Mantel",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Wipe Mantel",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Table/Ottoman",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Blinds",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Door Glass",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Dust Fireplace",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Fireplace Clean",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Ceiling Fan",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Office",
          "images": [],
          "tasks": [
              {
                  "name": "Vacuum",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Shampoo Carpet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Desk",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Organize Desk Wires",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Organize Closet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Vacuum Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wipe Closet Shelf",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Make Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Electronics",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wash Bedding",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Nightstand",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wash Curtains",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Dining Room",
          "images": [],
          "tasks": [
              {
                  "name": "Wipe Table",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Table Base",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Chairs",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Blinds",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Light Fixture",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Organize Shelf",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Shelf",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Shelf",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Deuce's Bedroom",
          "images": [],
          "tasks": [
              {
                  "name": "Vacuum",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Shampoo Carpet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Desk",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Put Toys In Toybox",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Purge Toys",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Organize Closet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Vacuum Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wipe Closet Shelf",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Make Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Bed Frame",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Under Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Electronics",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wash Bedding",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wash Curtains",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Denee's Bedroom",
          "images": [],
          "tasks": [
              {
                  "name": "Vacuum",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Shampoo Carpet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Desk",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Organize Closet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Vacuum Closet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wipe Closet Shelf",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Make Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Bed Frame",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Under Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Electronics",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wash Bedding",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wash Curtains",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Kid's Bathroom",
          "images": [],
          "tasks": [
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Counter",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Sink & Faucet",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Mirror",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sanitize Sink Drain",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Toilet",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Outside & Under Toilet",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Tub & Shower Walls",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Shower Fixtures",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wash Shower Curtain",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Organize Closet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Closet Shelves",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wash Clothes",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Organize Cabinets & Drawers",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Cabinets & Drawers",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Window & Window Seal",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Blinds",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Take Out Trash",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Base Boards",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Primary Bedroom",
          "images": [],
          "tasks": [
              {
                  "name": "Vacuum",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Shampoo Carpet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Desk",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Organize Desk Wires",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Nightstand",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Mirror",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Make Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Bed Frame",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Under Bed",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Electronics",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wash Bedding",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Windows & Window Seals",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Baseboards",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wash Curtains",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Primary Bathroom",
          "images": [],
          "tasks": [
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Counter",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Sinks & Faucets",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Mirror",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Sanitize Sink Drains",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside Toilet",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean Outside & Under Toilet",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Shower Walls",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Shower Fixtures",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Tub",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Wash Clothes",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Organize Cabinets & Drawers",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Wipe Cabinets & Drawers",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Window & Window Seal",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Blinds",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Take Out Trash",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Base Boards",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Primary Closet",
          "images": [],
          "tasks": [
              {
                  "name": "Vacuum Carpet",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Shampoo Carpet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Organize Shoes",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Hang All Clothes Up",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Purge Unwarn Clothes",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Organize Shelves",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Shelves",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Wash Clothes",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              }
          ]
      },
      {
          "name": "Laundry Room",
          "images": [],
          "tasks": [
              {
                  "name": "Sweep Floor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Mop Floor",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean Counter",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wipe Outside of Washer & Dryer",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Clean Dryer Lent Trap",
                  "description": "",
                  "points": 2,
                  "isComplete": false
              },
              {
                  "name": "Organize Cabinet",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Inside of Cabinet",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Clean Top of Cabinet",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Inside of Washer and Dryer",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Take Out Trash",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Dust Pictures & Wall Decor",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Organize Shelf",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Clean AC Vent",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Organize Shoes",
                  "description": "",
                  "points": 1,
                  "isComplete": false
              },
              {
                  "name": "Wash & Dry Clothes",
                  "description": "",
                  "points": 3,
                  "isComplete": false
              },
              {
                  "name": "Wipe Walls & Base Boards",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              },
              {
                  "name": "Clean Doors",
                  "description": "",
                  "points": 4,
                  "isComplete": false
              },
              {
                  "name": "Dust Attic Steps & Door",
                  "description": "",
                  "points": 5,
                  "isComplete": false
              }
          ]
      }
  ]

  rooms.each do |room|
    room_entry = Room.create({ name: room[:name], goal_level: 5 })
    room[:tasks].each do |task|
      Task.create(name: task[:name], description: task[:description], level: task[:points], is_complete: task[:isComplete], room_id: room_entry[:id])
    end
  end


    render json: { rooms: @rooms, tasks: @tasks }
  end

  # GET /rooms/1 or /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms or /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to room_url(@room), notice: "Room was successfully created." }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1 or /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to room_url(@room), notice: "Room was successfully updated." }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1 or /rooms/1.json
  def destroy
    @room.destroy!

    respond_to do |format|
      format.html { redirect_to rooms_url, notice: "Room was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:name, :goal_level)
    end
end
