.class public LBe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAi;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, LBe;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    return-void
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Notification;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, LBe;->a:Lcom/yik/yak/ui/activity/MainActivity;

    sget-object v1, LCU;->c:LCU;

    invoke-virtual {v0, v1, p2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;I)V

    .line 125
    return-void
.end method
