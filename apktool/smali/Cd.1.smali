.class LCd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:LCc;


# direct methods
.method constructor <init>(LCc;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, LCd;->b:LCc;

    iput-object p2, p0, LCd;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, LCd;->b:LCc;

    iget-object v0, v0, LCc;->c:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 470
    iget-object v0, p0, LCd;->a:Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 471
    return-void
.end method
