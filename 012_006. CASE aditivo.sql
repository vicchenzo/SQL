-- CASE ADITIVO
-- Os Produtos da categoria 'TV and Video' terão um desconto de 10%
-- Se Além de ser da categoria 'TV and Video' o produto for da Subcategoria 'Televisions', receberá mais 5% Total, 15%

SELECT
    ProductKey,
    ProductName,
    ProductCategoryName,
    ProductSubcategoryName,
    UnitPrice,
    CASE
        WHEN ProductCategoryName = 'TV and Video' THEN 0.10
        ELSE 0
    END
    + CASE
        WHEN ProductSubcategoryName = 'Televisions' THEN 0.05
        ELSE 0
    END AS 'Desconto'
FROM
    DimProduct
INNER JOIN DimProductSubcategory
    ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN DimProductCategory
    ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

-- DETALHE: CASO TIVESSE ALGUM PRODUTO QUE FOSSE 'Televisions' E NÃO FOSSE DA CATEGORIA 'Tv and Video' PRODUTO SÓ TERIA 5% DE DESCONTO
