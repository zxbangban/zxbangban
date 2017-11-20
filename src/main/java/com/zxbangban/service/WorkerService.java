package com.zxbangban.service;

import com.zxbangban.dto.Worker;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface WorkerService {
    double queryRating(long workerId);
    List<Worker> queryWorkersByJob(String str);
}
