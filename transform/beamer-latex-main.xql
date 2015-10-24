import module namespace m='http://www.tei-c.org/tei-simple/models/beamer.odd' at '/db/apps/tei-simple/transform/beamer-latex.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "image-dir": (system:get-exist-home() || "/webapp/WEB-INF/data/expathrepo/tei-simple-0.6.0/test/", system:get-exist-home() || "/webapp/WEB-INF/data/expathrepo/tei-simple-0.6.0/doc/"),
    "styles": ["../transform/beamer.css"],
    "collection": "/db/apps/tei-simple/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)