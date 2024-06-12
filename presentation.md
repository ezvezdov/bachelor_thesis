Dobrý den, dnes vám představím svou bakalářskou práci na téma “Od FastText k Transformer modelům a jejich aplikace v Retrieval-Augmented generování”.

---

**SLIDE**

---

Motivoval jsem se tím, že velké jazykové modely často dělají chyby, když se mluví o nějakých technických detailech.

Pro zlepšení kvality odpovědí existuje metoda RAG, pomocí které můžeme nahrát do modelu technický dokument, který pak může být použit během generování odpovědí.

Pro využití tohoto dokumentu, jazykový model musí reprezentovat text v číselné podobě pro další použití.

To znamená, že kvalita odpovědí závisí na zvolené textové reprezentaci.

---

**SLIDE**

---

Na tomto slidu můžete vidět, jak se dokument překládá do vektorů, které se nazývají embeddingy.

Mým cílem bylo porovnat tradiční metody reprezentace textu a metody založené na transformerech. Také jsem chtěl najít nejlepší modely pro RAG a optimální parametry pro fragmentaci dokumentu na tzv. chunky.

---

**SLIDE**

---

Tady je vidět evoluci textových reprezentací.

Za tradiční uvažuju modely, které nejsou založené na transformerech.

Ze sady tradičních metod jsem vybral FastText, protože je orientován na morfologicky bohaté jazyky jako je čeština.

FastText je metoda, která využívá neuronovou síť s malým počtem vrstev. Pomocí FastTextu můžeme vygenerovat embeddingy pouze pro slova. Embeddingy jsou generovány během trénování tohoto modelu. Kontext embeddingů je limitovaný a záleží jen na trénovacích datech. Pořadí slov není uvažováno tímto modelem.

Co se týče Transformer modelů, ty využívají hlubokou neuronovou síť se spoustou vrstev s mechanismem self-attention. Embeddingy jsou generovány v reálném čase, jsou kontextualizované a můžeme vygenerovat embedding pro spoustu slov najednou. Taky Transformer modely uvažují pořadí slov ve větě.

---

**SLIDE**

---

Dále jsem se rozhodl, že budu porovnávat modely na textech v češtině, také budu dodatečně provádět evaluaci na českých odháčkovaných textech. Proces odháčkování můžete vidět na schématu.

Jako baseline jsem zvolil FastText s architekturou CBOW a dimenzionalitou 300.

Jako benchmark jsem zvolil UPV FAQ , což jsou otázky a jejich odpovědi z Úřadu průmyslového vlastnictví.

Vybral jsem 15 skupin transformer modelů, celkem to je 37 modelů s různým počtem parametrů, od 13 až do 560 milionů parametrů.

---

**SLIDE**

---

Jako výsledek jsem vybral 5 nejlepších modelů ohledně jejich poměru. Porovnání těchto modelů s baseline je zachyceno na slidu.

Také jsem označil několik nálezů během této práce.

Zaprvé, že učení s využitím kvalitních labelovaných datasetů, tzv. supervised učení, zvyšuje výkonnost modelu.

Zadruhé, že modely určené pro angličtinu fungují pro češtinu také dobře.

A nakonec, že dodatečné trénování modelu pro specifický účel, tzv. fine-tuning, zlepšuje výkonnost modelu.

---

**SLIDE**

---

Další část studia se týká optimalizace RAG (Retrieval-Augmented Generation).

Tento algoritmus funguje tak, že rozdělí dokument na části tzv. chunky, přeloží tyto části do embeddingu a uloží je ve vektorové databázi.

Když velký jazykový model obdrží nějaký dotaz, převede ten dotaz do embeddingu stejným modelem jako dokument a pak najde ve vektorové databázi K nejpodobnějších chunků a použije je jako kontext. Poté na zadanou otázku odpoví.

Takže na ten algoritmus má vliv model použitý pro generování embeddingu a velikost chunků během fragmentace dokumentu.

---

**SLIDE**

---

Tady jsou parametry, které jsem použil pro evaluaci různých poměrů chunků.

Použil jsem GTE_small pro generování embeddingů, 5 poměrů chunků s podobným poměrem kontextu, GPT-3.5-turbo pro generování odpovědí a GPT-4o pro měření kvality odpovědí.

Nejlépe se projevil největší chunk, 4096 symbolů.

---

**SLIDE**

---

V závěrečném slidu bych chtěl shrnout výsledky své bakalářské práce.

Porovnal jsem tradiční a transformer embedding modely.

Označil jsem 5 nejlepších transformer modelů pro RAG.

Našel jsem optimální poměr chunku pro RAG.

Prezentace je u konce, rád zodpovím vaše dotazy.

Děkuji vám za vaši pozornost.

---

**END**

---

Rád bych zodpověděl otázky pana Krále.

První otázka je: „Jaké je hlavní použití pro systémy typu RAG?“
Nejhlavnější použití je zlepšení kvality odpovědí a použití aktualizovaných informací během odpovídání na technické otázky.

Druhá otázka je: „O kolik je přesnost RAG systému pro češtinu nižší než v angličtině?“

RAG pro češtinu je o 15–20 procent horší, což je kvůli nedostatku trénovacích dat a také proto, že výzkumná komunita je orientovaná na angličtinu.