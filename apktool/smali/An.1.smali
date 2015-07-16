.class LAn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxJ;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:LAm;


# direct methods
.method constructor <init>(LAm;LxJ;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, LAn;->c:LAm;

    iput-object p2, p0, LAn;->a:LxJ;

    iput-object p3, p0, LAn;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, LAn;->c:LAm;

    iget-object v0, v0, LAm;->c:LAp;

    iget-object v1, p0, LAn;->a:LxJ;

    iget-object v2, p0, LAn;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, LAp;->a(LxJ;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
