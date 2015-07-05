.class LAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:LAb;


# direct methods
.method constructor <init>(LAb;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, LAd;->b:LAb;

    iput-object p2, p0, LAd;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, LAd;->b:LAb;

    iget-object v0, v0, LAb;->c:LAe;

    iget-object v1, p0, LAd;->b:LAb;

    iget-object v1, v1, LAb;->a:Lcom/yik/yak/data/http/request/YikYakRequest;

    iget-object v2, p0, LAd;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, LAe;->a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V

    .line 88
    return-void
.end method
