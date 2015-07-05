.class LAc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxz;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:LAb;


# direct methods
.method constructor <init>(LAb;Lxz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, LAc;->c:LAb;

    iput-object p2, p0, LAc;->a:Lxz;

    iput-object p3, p0, LAc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, LAc;->c:LAb;

    iget-object v0, v0, LAb;->c:LAe;

    iget-object v1, p0, LAc;->a:Lxz;

    iget-object v2, p0, LAc;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, LAe;->a(Lxz;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
