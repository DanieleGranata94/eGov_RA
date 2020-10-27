import bpmn_python.bpmn_diagram_rep as diagram


bpmn_graph = diagram.BpmnDiagramGraph()
bpmn_graph.load_diagram_from_xml_file("C:\\Users\\spetr\\Desktop\\BPMN-Usati_nel_paper\\GC_BPMN_CON_ATTRIBUTE.bpmn")
lista = bpmn_graph.get_nodes()
for tuple in lista:
    for dizionario in tuple:
        if type(dizionario) is dict:
            if dizionario['type'].endswith("Task"):
                #print(dizionario['type'])
                print(dizionario)