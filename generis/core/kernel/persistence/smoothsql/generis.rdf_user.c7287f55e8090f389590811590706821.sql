SELECT DISTINCT
    subject
FROM
    statements a
WHERE
    predicate = 'http://www.tao.lu/Ontologies/generis.rdf#login'
AND object = '{{http://www.tao.lu/Ontologies/generis.rdf#login}}'
AND EXISTS (
        SELECT 1
        FROM statements b
        WHERE
            b.subject = a.subject
        AND predicate = 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'
        AND object IN ('http://www.tao.lu/Ontologies/TAO.rdf#User',
                        'http://www.tao.lu/Ontologies/TAOSubject.rdf#Subject',
                        'https://etestas.nec.lt/TAO.rdf#i15501577606670125',
                        'https://etestas.nec.lt/TAO.rdf#i15501577438077123',
                        'https://etestas.nec.lt/TAO.rdf#i15501577288625122',
                        'https://etestas.nec.lt/TAO.rdf#i15501577199797121',
                        'http://www.tao.lu/Ontologies/generis.rdf#User')
)