.class Lpm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Loc;

.field final synthetic b:Lpk;


# direct methods
.method constructor <init>(Lpk;Loc;)V
    .locals 0

    iput-object p1, p0, Lpm;->b:Lpk;

    iput-object p2, p0, Lpm;->a:Loc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpm;->a:Loc;

    iget-object v1, p0, Lpm;->b:Lpk;

    invoke-static {v1}, Lpk;->a(Lpk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Loc;->a(Ljava/util/List;)V

    return-void
.end method
