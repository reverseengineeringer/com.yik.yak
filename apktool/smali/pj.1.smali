.class Lpj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LnZ;

.field final synthetic b:Lph;


# direct methods
.method constructor <init>(Lph;LnZ;)V
    .locals 0

    iput-object p1, p0, Lpj;->b:Lph;

    iput-object p2, p0, Lpj;->a:LnZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpj;->a:LnZ;

    iget-object v1, p0, Lpj;->b:Lph;

    invoke-static {v1}, Lph;->a(Lph;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, LnZ;->a(Ljava/util/List;)V

    return-void
.end method
