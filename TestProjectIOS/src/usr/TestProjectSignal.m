//
//  TestProjectSignal.m
//  TestProjectIOS
//
//  Created by zjrcumac on 2023/1/16.
//

#import "TestProjectSignal.h"

#import <sys/sysctl.h>


@implementation TestProjectSignal

- (instancetype)init {
    if (self = [super init]) {
        [self testRun_kill];
    }
    return self;
}

- (NSArray *)runningProcesses {
    int mib[4] = {CTL_KERN, KERN_PROC, KERN_PROC_ALL, 0};
    size_t miblen = 4;
    size_t size;
    int st = sysctl(mib, miblen, NULL, &size, NULL, 0);
    struct kinfo_proc *proc = NULL;
    struct kinfo_proc *newProc = NULL;
    do {
        size += size / 10;
        newProc = realloc(proc, size);
        if (!newProc) {
            if (proc) {
                free(proc);
                proc = NULL;
            }
            return nil;
        }
        proc = newProc;
        st = sysctl(mib, miblen, proc, &size, NULL, 0);
    } while (st == -1 && errno == ENOMEM);
    
    if (st == 0) {
        if (size % sizeof(struct kinfo_proc) == 0) {
            int nproc = size / sizeof(struct kinfo_proc);
            if (nproc) {
                NSMutableArray *mutArr = [NSMutableArray array];
                for (int i = nproc - 1; i >= 0; i--) {
                    NSString *pid = [NSString stringWithFormat:@"%d", proc[i].kp_proc.p_pid];
                    NSString *pname = [NSString stringWithFormat:@"%s", proc[i].kp_proc.p_comm];
                    NSString *p_cpu= [NSString stringWithFormat:@"%d", proc[i].kp_proc.p_estcpu];
                    double t = [[NSDate date] timeIntervalSince1970] - proc[i].kp_proc.p_un.__p_starttime.tv_sec;
                    NSString *p_useTiem = [NSString stringWithFormat:@"%f", t];
                    
                    NSMutableDictionary *mutDic = [NSMutableDictionary dictionary];
                    [mutDic setValue:pid forKey:@"pid"];
                    [mutDic setValue:pname forKey:@"pname"];
                    [mutDic setValue:p_cpu forKey:@"p_cpu"];
                    [mutDic setValue:p_useTiem forKey:@"p_useTiem"];
                    
                    [mutArr addObject:mutDic];
                }
                free(proc);
                proc = NULL;
                return mutArr;
            }
        }
    }
    return nil;
}

- (void)testRun_kill {
    NSLog(@"kill()和killpg()都是杀掉进程，第二个参数传0的时候只是检查当前进程是否在运行，返回为0是在运行中，返回-1是进程已经关掉或者不运行了；传大于0的数则是杀掉进程");
    NSArray *arr = [self runningProcesses];
    for (NSDictionary *dic in arr) {
        int pid = [[dic objectForKey:@"pid"] intValue];
        
//        int killpg_res = killpg(pid, 1);
//        NSLog(@"killpg_res:%d pid:%d", killpg_res, pid);
        
        int kill_res = kill(pid, 1);
        NSLog(@"kill_res:%d pid:%d", kill_res, pid);
//        if (pid != 0 && kill_res == 0) {
//            int againKill_res = kill(pid, 1);
//            NSLog(@"againKill_res:%d pid:%d", againKill_res, pid);
//        }
    }
}

@end
