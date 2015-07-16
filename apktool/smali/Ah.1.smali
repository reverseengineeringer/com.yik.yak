.class LAh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:LAg;


# direct methods
.method constructor <init>(LAg;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, LAh;->a:LAg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, LAh;->a:LAg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAg;->a(LAg;Z)Z

    .line 82
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0, p2}, LAg;->a(LAg;Ljava/lang/Exception;)V

    .line 83
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0, v3}, LAg;->a(LAg;I)I

    .line 67
    iget-object v0, p0, LAh;->a:LAg;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, p2}, LAg;->a(LAg;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0}, LAg;->a(LAg;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Notification;

    .line 70
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "new"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0}, LAg;->b(LAg;)I

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0, v3}, LAg;->a(LAg;Z)Z

    .line 76
    iget-object v0, p0, LAh;->a:LAg;

    invoke-static {v0}, LAg;->c(LAg;)V

    .line 77
    return-void
.end method
