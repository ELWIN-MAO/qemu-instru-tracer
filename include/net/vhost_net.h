#ifndef VHOST_NET_H
#define VHOST_NET_H

#include "net/net.h"

struct vhost_net;
typedef struct vhost_net VHostNetState;

VHostNetState *vhost_net_init(NetClientState *backend, int devfd, bool force);

bool vhost_net_query(VHostNetState *net, VirtIODevice *dev);
int vhost_net_start(VirtIODevice *dev, NetClientState *ncs, int total_queues);
void vhost_net_stop(VirtIODevice *dev, NetClientState *ncs, int total_queues);

void vhost_net_cleanup(VHostNetState *net);

unsigned vhost_net_get_features(VHostNetState *net, unsigned features);
void vhost_net_ack_features(VHostNetState *net, unsigned features);

bool vhost_net_virtqueue_pending(VHostNetState *net, int n);
void vhost_net_virtqueue_mask(VHostNetState *net, VirtIODevice *dev,
                              int idx, bool mask);
#endif
