module ProductionManagement {

    public struct ProductionProcess {
        processId: u64,
        startTime: u64,
        endTime: u64,
        status: u64,
    }

    public struct ProductionManagementModule {
        processes: vector<ProductionProcess>,
    }

    public fun createProductionProcess(
        moduleRef: &mut ProductionManagementModule,
        processId: u64,
        startTime: u64,
        endTime: u64,
        status: u64,
    ) {
        let newProcess: ProductionProcess = ProductionProcess {
            processId: processId,
            startTime: startTime,
            endTime: endTime,
            status: status,
        };
        moduleRef.processes.push_back(newProcess);
    }

    public fun getProductionProcesses(moduleRef: &ProductionManagementModule): vector<ProductionProcess> {
        moduleRef.processes
    }
}
