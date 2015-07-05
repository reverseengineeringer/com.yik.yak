.class Lhj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhh;


# direct methods
.method private constructor <init>(Lhh;)V
    .locals 0

    iput-object p1, p0, Lhj;->a:Lhh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhh;Lhi;)V
    .locals 0

    invoke-direct {p0, p1}, Lhj;-><init>(Lhh;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhj;->a:Lhh;

    invoke-static {v0}, Lhh;->d(Lhh;)Lgm;

    move-result-object v0

    invoke-interface {v0}, Lgm;->b()V

    return-void
.end method
