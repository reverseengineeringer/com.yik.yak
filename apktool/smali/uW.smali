.class final LuW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LuW;->a:Ljava/lang/String;

    iput-object p2, p0, LuW;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, LuP;->g()LuP;

    move-result-object v0

    iget-object v1, p0, LuW;->a:Ljava/lang/String;

    iget-object v2, p0, LuW;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LuP;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
