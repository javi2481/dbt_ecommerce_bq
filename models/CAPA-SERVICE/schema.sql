version: 2

models:
    - name: dim_category
      description: Dimension de Categorias
      config:
        schema: service_data_javier
      columns: 
        - name: dim_category_id
          description: id de la dimension Categoria
          test:
            - unique
            - not null
        - name: product_category_name
          description: Nombre de la Categoria
          test:
            - not null
        - name: product_category_name_translation
          description: Traduccion de la categoria del portugues al ingles
          test:
            - not null
              