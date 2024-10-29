-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "RetailTurnoverByIndustryGroup" (
    "RecordDate" date  NOT NULL ,
    "Original__Turnover_FoodRetailing" float  NOT NULL ,
    "Original__Turnover_HouseholdGoodsRetailing" float  NOT NULL ,
    "Original__Turnover_ClothingFootwearAndPersonalAccessoryRetailing" float  NOT NULL ,
    "Original__Turnover_DepartmentStores" float  NOT NULL ,
    "Original__Turnover_OtherRetailing" float  NOT NULL ,
    "Original__Turnover_CafesRestaurantsAndTakeawayFoodServices" float  NOT NULL ,
    "Original__Turnover_TotalIndustry" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_FoodRetailing" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_HouseholdGoodsRetailing" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_ClothingFootwearAndPersonalAccessoryRetailing" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_DepartmentStores" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_OtherRetailing" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_CafesRestaurantsAndTakeawayFoodServices" float  NOT NULL ,
    "SeasonallyAdjusted__Turnover_TotalIndustry" float  NOT NULL ,
    "Trend__Turnover_FoodRetailing" float  NULL ,
    "Trend__Turnover_HouseholdGoodsRetailing" float  NULL ,
    "Trend__Turnover_ClothingFootwearAndPersonalAccessoryRetailing" float  NULL ,
    "Trend__Turnover_DepartmentStores" float  NULL ,
    "Trend__Turnover_OtherRetailing" float  NULL ,
    "Trend__Turnover_CafesRestaurantsAndTakeawayFoodServices" float  NULL ,
    "Trend__Turnover_TotalIndustry" float  NULL ,
    CONSTRAINT "pk_RetailTurnoverByIndustryGroup" PRIMARY KEY (
        "RecordDate"
    )
)

GO

