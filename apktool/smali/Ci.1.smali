.class LCi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:LCh;


# direct methods
.method constructor <init>(LCh;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, LCi;->b:LCh;

    iput-object p2, p0, LCi;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, LCi;->b:LCh;

    iget-object v0, v0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->o(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 491
    iget-object v0, p0, LCi;->a:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 492
    iget-object v0, p0, LCi;->b:LCh;

    iget-object v0, v0, LCh;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->p(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 493
    return-void
.end method
